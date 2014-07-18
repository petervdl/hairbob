.class public Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CompleteProfileBaseFragment.java"


# static fields
.field private static final SCROLL_DURATION:I = 0x1f4

.field private static final SCROLL_INTERVALS:I = 0xa

.field private static final SHOW_BADGE_BEFORE_TRANSITION_DURATION:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->showConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "headerText"    # Ljava/lang/String;
    .param p2, "descriptionText"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/CircleBadgeView;

    .line 70
    .local v0, "circleBadgeView":Lcom/airbnb/android/views/CircleBadgeView;
    invoke-static {p1, p2}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;

    move-result-object v1

    .line 72
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/CircleBadgeView;->animateActivation(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->showChildFragment(Landroid/support/v4/app/Fragment;)V

    .line 75
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 76
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$2;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method


# virtual methods
.method public animateCompletion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "headerText"    # Ljava/lang/String;
    .param p2, "descriptionText"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 38
    .local v6, "scrollView":Landroid/widget/ScrollView;
    if-eqz v6, :cond_25

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_25

    .line 39
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0xa

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;JJLandroid/widget/ScrollView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->start()Landroid/os/CountDownTimer;

    .line 58
    :goto_24
    return-void

    .line 56
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->showConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity;

    return-object v0
.end method

.method protected isEditProfileFlow()Z
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/activities/CompleteProfileActivity;->getType()Lcom/airbnb/android/enums/CompleteProfileType;

    move-result-object v0

    .line 32
    .local v0, "type":Lcom/airbnb/android/enums/CompleteProfileType;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/airbnb/android/enums/CompleteProfileType;->isEditProfileType()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected isVerifiedIdFlow()Z
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getCompleteProfileActivity()Lcom/airbnb/android/activities/CompleteProfileActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompleteProfileActivity;->isVerifiedIdFlow()Z

    move-result v0

    return v0
.end method

.method protected showChildFragment(Landroid/support/v4/app/Fragment;)V
    .registers 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 62
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f040006

    const v2, 0x7f040008

    const v3, 0x7f040007

    const v4, 0x7f040009

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    const v1, 0x7f080183

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 66
    return-void
.end method
