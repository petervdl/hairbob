.class public Lcom/airbnb/android/fragments/NPSFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "NPSFragment.java"


# static fields
.field public static final ARG_REVIEW:Ljava/lang/String; = "review"


# instance fields
.field private mDoubleBlindExperiment:Z

.field mGroup:Landroid/widget/RadioGroup;

.field private mReview:Lcom/airbnb/android/models/Review;

.field mSubmit:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/NPSFragment;)Lcom/airbnb/android/models/Review;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/NPSFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/NPSFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/NPSFragment;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/NPSFragment;->mDoubleBlindExperiment:Z

    return v0
.end method

.method public static bundleWithListings(Lcom/airbnb/android/models/Review;)Landroid/os/Bundle;
    .registers 3
    .param p0, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_3c

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    :goto_6
    return-void

    .line 80
    :pswitch_7
    iget-object v0, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackViewReview(Lcom/airbnb/android/models/Review;)V

    .line 81
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/ReviewsActivity;->intentForUser(Landroid/content/Context;Lcom/airbnb/android/models/User;Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/NPSFragment;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 85
    :pswitch_27
    iget-object v0, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v0}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackDismissPostDoubleBlindDialog(Lcom/airbnb/android/models/Review;)V

    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 89
    :pswitch_34
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 78
    :pswitch_data_3c
    .packed-switch 0x3f2
        :pswitch_7
        :pswitch_27
        :pswitch_34
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 40
    const v1, 0x7f0300c4

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/AirActivity;

    const v2, 0x7f0e055d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 43
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/NPSFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "review"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review;

    iput-object v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    .line 46
    iget-object v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    if-eqz v1, :cond_34

    .line 47
    iget-object v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->isDoubleBlind()Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mDoubleBlindExperiment:Z

    .line 50
    :cond_34
    iget-object v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mSubmit:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e0735

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 51
    iget-object v1, p0, Lcom/airbnb/android/fragments/NPSFragment;->mSubmit:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/NPSFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/NPSFragment$1;-><init>(Lcom/airbnb/android/fragments/NPSFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-object v0
.end method
