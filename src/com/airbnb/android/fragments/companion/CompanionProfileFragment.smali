.class public Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;
.super Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
.source "CompanionProfileFragment.java"


# static fields
.field private static final ARG_ABOUT_ME:Ljava/lang/String; = "about_me"

.field private static final ARG_COMPANION:Ljava/lang/String; = "companion"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAboutMeTextView:Lcom/airbnb/android/views/AirTextView;

.field mCompanionName:Lcom/airbnb/android/views/AirTextView;

.field mCompanionProfilePicture:Lcom/airbnb/android/views/AirImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;-><init>()V

    return-void
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/User;Ljava/lang/String;)Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;
    .registers 6
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "companion"    # Lcom/airbnb/android/models/User;
    .param p2, "aboutMe"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v2, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;

    .line 32
    .local v1, "fragment":Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;
    if-nez v1, :cond_f

    .line 33
    new-instance v1, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;

    .end local v1    # "fragment":Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;-><init>()V

    .line 36
    .restart local v1    # "fragment":Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "companion"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    const-string/jumbo v2, "about_me"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method


# virtual methods
.method public getTransparentHeaderHeight()F
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 72
    .local v0, "screenHeight":I
    div-int/lit8 v1, v0, 0x6

    int-to-float v1, v1

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "outerView":Landroid/view/View;
    const v5, 0x7f03007e

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 47
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mScrollViewContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {p0, v4}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "companion"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/User;

    .line 52
    .local v1, "companion":Lcom/airbnb/android/models/User;
    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mCompanionProfilePicture:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mCompanionName:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "about_me"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "aboutMe":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->mAboutMeTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v5, v0}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    .line 61
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 62
    .local v3, "screenHeight":I
    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->getTransparentHeaderHeight()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_67

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    int-to-float v5, v5

    invoke-virtual {p0, v2, v5}, Lcom/airbnb/android/fragments/companion/CompanionProfileFragment;->setTransparentHeaderHeight(Landroid/view/View;F)V

    .line 66
    :cond_67
    return-object v2
.end method

.method public useListView()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
