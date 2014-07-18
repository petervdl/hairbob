.class public Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ReviewFeedbackActivity.java"


# static fields
.field private static final KEY_EDIT_PRIVATE_FEEDBACK_FLAG:Ljava/lang/String; = "edit_private"

.field private static final KEY_EDIT_PUBLIC_FEEDBACK_FLAG:Ljava/lang/String; = "edit_public"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_REVIEW:Ljava/lang/String; = "review"

.field private static final KEY_REVIEW_ID:Ljava/lang/String; = "review_id"

.field private static final LOGIN_REQUEST:I = 0x156


# instance fields
.field private mName:Ljava/lang/String;

.field private mReloadOnResume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;Lcom/airbnb/android/models/Review;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->showReview(Lcom/airbnb/android/models/Review;)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->handleUpNavigation()V

    return-void
.end method

.method private getReviewIdFromWebIntent(Landroid/content/Intent;)J
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, "intentData":Landroid/net/Uri;
    const-wide/16 v3, -0x1

    .line 198
    .local v3, "reviewId":J
    if-eqz v1, :cond_3a

    .line 199
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 200
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_3a

    const-string/jumbo v5, "reviews"

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 202
    const-string/jumbo v5, "edit"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 204
    const/4 v5, 0x2

    :try_start_30
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_39} :catch_3b

    move-result-wide v3

    .line 217
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    :goto_3a
    return-wide v3

    .line 205
    .restart local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3b
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-class v5, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "error parsing review id"

    invoke-static {v5, v6, v0}, Lcom/airbnb/android/utils/BuildHelper;->debugErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3a

    .line 208
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_49
    const-string/jumbo v5, "edit"

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 210
    const/4 v5, 0x1

    :try_start_57
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_60} :catch_62

    move-result-wide v3

    goto :goto_3a

    .line 211
    :catch_62
    move-exception v0

    .line 212
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-class v5, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "error parsing review id"

    invoke-static {v5, v6, v0}, Lcom/airbnb/android/utils/BuildHelper;->debugErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3a
.end method

.method private handleUpNavigation()V
    .registers 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    .line 187
    .local v0, "fragment":Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;
    if-eqz v0, :cond_13

    .line 188
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->finishReviewFeedbackActivity()V

    .line 192
    :goto_12
    return-void

    .line 190
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->finishActivity()V

    goto :goto_12
.end method

.method public static intentForEditPrivateFeedback(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edit_private"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static intentForEditPublicFeedback(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edit_public"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method public static intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 44
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    return-object v1
.end method

.method public static intentForReviewId(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reviewId"    # J

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "review_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method private loadFragment()V
    .registers 9

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_3e

    const-string/jumbo v5, "review_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string/jumbo v5, "review_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 99
    .local v3, "reviewId":J
    :goto_1c
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_43

    .line 100
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    .line 101
    .local v2, "loaderFrame":Lcom/airbnb/android/views/LoaderFrame;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 102
    const v5, 0x7f0a001e

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/LoaderFrame;->setBackgroundResource(I)V

    .line 105
    new-instance v5, Lcom/airbnb/android/requests/GetReviewRequest;

    new-instance v6, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity$1;-><init>(Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;)V

    invoke-direct {v5, v3, v4, v6}, Lcom/airbnb/android/requests/GetReviewRequest;-><init>(JLcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v5}, Lcom/airbnb/android/requests/GetReviewRequest;->execute()V

    .line 125
    .end local v2    # "loaderFrame":Lcom/airbnb/android/views/LoaderFrame;
    :goto_3d
    return-void

    .line 95
    .end local v3    # "reviewId":J
    :cond_3e
    invoke-direct {p0, v1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getReviewIdFromWebIntent(Landroid/content/Intent;)J

    move-result-wide v3

    goto :goto_1c

    .line 119
    .restart local v3    # "reviewId":J
    :cond_43
    const-string/jumbo v5, "review"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 121
    const-string/jumbo v5, "review"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Review;

    invoke-direct {p0, v5}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->showReview(Lcom/airbnb/android/models/Review;)V

    goto :goto_3d

    .line 123
    :cond_59
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->handleUpNavigation()V

    goto :goto_3d
.end method

.method private showReview(Lcom/airbnb/android/models/Review;)V
    .registers 9
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 129
    const v2, 0x7f0e063d

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 130
    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->mName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->isSubmitted()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 134
    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getListingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    const v2, 0x7f0e0631

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getListingName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "error":Ljava/lang/String;
    :goto_44
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->handleUpNavigation()V

    .line 152
    .end local v0    # "error":Ljava/lang/String;
    :goto_4e
    return-void

    .line 134
    :cond_4f
    const v2, 0x7f0e0630

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 142
    :cond_57
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "edit_public"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 143
    invoke-static {p1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->newInstanceEditPublicFeedback(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    move-result-object v1

    .line 150
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :goto_68
    invoke-virtual {p0, v1, v5}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_4e

    .line 144
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_6c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "edit_private"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 145
    invoke-static {p1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->newInstanceEditPrivateFeedback(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_68

    .line 147
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_7e
    invoke-static {p1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->newInstance(Lcom/airbnb/android/models/Review;)Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_68
.end method


# virtual methods
.method public finishActivity()V
    .registers 4

    .prologue
    .line 168
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 171
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 174
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->overridePendingTransition(II)V

    .line 178
    :goto_1d
    return-void

    .line 176
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->finish()V

    goto :goto_1d
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 232
    const/16 v0, 0x156

    if-ne p1, v0, :cond_19

    .line 233
    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->mReloadOnResume:Z

    .line 243
    :goto_14
    return-void

    .line 237
    :cond_15
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->finish()V

    goto :goto_14

    .line 242
    :cond_19
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->handleUpNavigation()V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 74
    const v0, 0x7f0e0762

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x156

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    :goto_1e
    return-void

    .line 78
    :cond_1f
    if-nez p1, :cond_25

    .line 79
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->loadFragment()V

    goto :goto_1e

    .line 81
    :cond_25
    const v0, 0x7f0e063d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 157
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->handleUpNavigation()V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onResume()V

    .line 224
    iget-boolean v0, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->mReloadOnResume:Z

    if-eqz v0, :cond_d

    .line 225
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->loadFragment()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->mReloadOnResume:Z

    .line 228
    :cond_d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/airbnb/android/activities/reviews/ReviewFeedbackActivity;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
