.class Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;
.super Ljava/lang/Object;
.source "ReviewRatingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

.field final synthetic val$reviewee:Lcom/airbnb/android/models/User;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;Lcom/airbnb/android/models/User;)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;->val$reviewee:Lcom/airbnb/android/models/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;->this$0:Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    iget-object v2, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;->val$reviewee:Lcom/airbnb/android/models/User;

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "user_profile"

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method
