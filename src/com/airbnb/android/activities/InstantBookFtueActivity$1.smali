.class Lcom/airbnb/android/activities/InstantBookFtueActivity$1;
.super Ljava/lang/Object;
.source "InstantBookFtueActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/InstantBookFtueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/InstantBookFtueActivity;

.field final synthetic val$listingId:J


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/InstantBookFtueActivity;J)V
    .registers 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;->this$0:Lcom/airbnb/android/activities/InstantBookFtueActivity;

    iput-wide p2, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;->val$listingId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;->this$0:Lcom/airbnb/android/activities/InstantBookFtueActivity;

    iget v0, v0, Lcom/airbnb/android/activities/InstantBookFtueActivity;->mCurrPage:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookFtuePressTry(IZ)V

    .line 44
    iget-object v0, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;->this$0:Lcom/airbnb/android/activities/InstantBookFtueActivity;

    iget-wide v1, p0, Lcom/airbnb/android/activities/InstantBookFtueActivity$1;->val$listingId:J

    # invokes: Lcom/airbnb/android/activities/InstantBookFtueActivity;->redirectToManageListing(J)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/InstantBookFtueActivity;->access$000(Lcom/airbnb/android/activities/InstantBookFtueActivity;J)V

    .line 45
    return-void
.end method
