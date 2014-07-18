.class public Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ReviewSummaryActivity.java"


# static fields
.field private static final KEY_REVIEW:Ljava/lang/String; = "review"


# instance fields
.field private mReview:Lcom/airbnb/android/models/Review;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method public static intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 19
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->mReview:Lcom/airbnb/android/models/Review;

    .line 31
    const v0, 0x7f0e065f

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 33
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;->newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewSummaryFragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewSummaryActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackSummarySection(Lcom/airbnb/android/models/Review;)V

    .line 36
    return-void
.end method
