//
//  TableViewController.m
//  BlogReader
//
//  Created by mac on 12/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "TableViewController.h"
#import "BlogPost.h"
#import "WebViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
//    self.blogPosts = [[NSArray alloc] initWithObjects:blogPost1, blogPost2, blogPost3, blogPost4, nil];
    
    NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
   
    
    
    
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
    
    NSError *error;
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    self.blogPosts = [NSMutableArray array];
    
    
    
    NSArray *blogPostsArray = [dataDictionary objectForKey:@"posts"];
    
    //for loop
    for(NSDictionary *bpDictionary in blogPostsArray){
                                   BlogPost *blogPost = [BlogPost blogPostWithTitle:[bpDictionary objectForKey:@"title"]];
                                   blogPost.author = [bpDictionary objectForKey:@"author"];
          blogPost.thumbnail = [bpDictionary objectForKey:@"thumbnail"];
                                   [self.blogPosts addObject:blogPost];
        blogPost.date = [bpDictionary objectForKey:@"date"];
        blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:@"url"]];
    }
                               
    
    
    //self.blogPosts = [dataDictionary objectForKey:@"posts"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.blogPosts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"blogCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier     forIndexPath:indexPath];
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    if([blogPost.thumbnail isKindOfClass:[NSString class]])
    {
    NSData *imageData = [NSData dataWithContentsOfURL:blogPost.thumbnailURL];
    
    UIImage *image = [UIImage imageWithData:imageData];
    
   
        
    cell.imageView.image =  image;
    }else{
        cell.imageView.image = [UIImage imageNamed:@"mario.jpg"];
    }
    cell.textLabel.text= blogPost.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@",   blogPost.author, [blogPost formattedDate]];
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSLog(@"(%@)", segue.identifier);
    
    if([segue.identifier isEqual:@"showBlogPost"]){
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
        [segue.destinationViewController setBlogPostURL:blogPost.url];
    
        
        
        
        
        
    }

    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSLog(@"RowSelected id: %ld", indexPath.row);
//    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
//    NSLog(@"%@", blogPost);
//    UIApplication *application = [UIApplication sharedApplication];
//    [application openURL:blogPost.url];
//    
//}


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
