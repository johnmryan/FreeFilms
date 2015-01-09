//
//  ActionFilmsTableViewController.m
//  FreeFilms
//
//  Created by Tyler Sammons on 1/9/15.
//  Copyright (c) 2015 Tyler_Sammons. All rights reserved.
//

#import "ActionFilmsTableViewController.h"
#import "Film.h"

@interface ActionFilmsTableViewController ()

@property NSMutableArray *ActionFilms;

@end

@implementation ActionFilmsTableViewController

- (void)loadInitialData {
    
    Film *film1 = [[Film alloc] init];
    film1.title = @"Run Lola Run (1998)";
    film1.link = @"http://www.youtube.com/watch?v=oLTt1buN_NY";
    [self.ActionFilms addObject:film1];
    Film *film2 = [[Film alloc] init];
    film2.title = @"Django Unchained (2012)";
    film2.link = @"https://www.youtube.com/watch?v=tNd1l7LsxvU";
    [self.ActionFilms addObject:film2];
    Film *film3 = [[Film alloc] init];
    film3.title = @"American Psycho (2000)";
    film3.link = @"https://www.youtube.com/watch?v=-TcfVzPgCJk";
    [self.ActionFilms addObject:film3];
    Film *film4 = [[Film alloc] init];
    film4.title = @"Looper (2012)";
    film4.link = @"https://www.youtube.com/watch?v=TmJkSF4Q_8c";
    [self.ActionFilms addObject:film4];
    Film *film5 = [[Film alloc] init];
    film5.title = @"The Brave Little Toaster (1987)";
    film5.link = @"http://www.youtube.com/watch?v=kQgPvhv_t-o";
    [self.ActionFilms addObject:film5];
    Film *film6 = [[Film alloc] init];
    film6.title = @"A Trip to the Moon (1902)";
    film6.link = @"https://www.youtube.com/watch?v=_FrdVdKlxUk";
    [self.ActionFilms addObject:film6];
    Film *film7 = [[Film alloc] init];
    film7.title = @"Batman Beyon: Return of The Joker - Part 1 (2000)";
    film7.link = @"https://www.youtube.com/watch?v=AFdezM3_m-c&list=PL_AYqxzHii9il6aL7WKljPN3So_9j7SZh";
    [self.ActionFilms addObject:film7];
    Film *film8 = [[Film alloc] init];
    film8.title = @"Starship Troopers (1997)";
    film8.link = @"http://www.youtube.com/watch?v=k_G8K3JaHU8";
    [self.ActionFilms addObject:film8];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.ActionFilms = [[NSMutableArray alloc] init];
    [self loadInitialData];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.ActionFilms count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    Film *actionFilm = [self.ActionFilms objectAtIndex:indexPath.row];
    cell.textLabel.text = actionFilm.title;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //[tableView deselectRowAtIndexPath:indexPath animated:NO];
    Film *tappedItem = [self.ActionFilms objectAtIndex:indexPath.row];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:tappedItem.link]];
    
    UIWebView *webView =[[UIWebView alloc]init];
    webView.backgroundColor = [UIColor clearColor];
    [webView setFrame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    NSURL *url = [NSURL URLWithString:tappedItem.link];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    [self.view addSubview:webView];
    

    
}


@end
