.class public Lcom/airbnb/android/fragments/SlideUpFtueFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "SlideUpFtueFragment.java"


# static fields
.field private static final MAX_RESET_ANIMATION:I = 0x2ee

.field private static final MAX_TAP_MOVE_DISTANCE:I = 0x14

.field private static final MIN_FLING_DISMISS_ANIMATION_TIME:I = 0xfa

.field private static final MIN_FLING_DISTANCE:I = 0x4b

.field private static final MIN_FLING_SPEED:I = 0xc8

.field private static final MIN_PUSH_DOWN_RATIO:F = 0.3f

.field private static PX_PER_DP:F = 0.0f

.field private static final TAP_ANIMATION_DURATION:I = 0xfa


# instance fields
.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCanStillBeTapEvent:Z

.field private mDownX:F

.field private mDownY:F

.field private mDragBox:Landroid/view/View;

.field private mLastSetY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;
    .param p1, "x1"    # Landroid/view/VelocityTracker;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownX:F

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/SlideUpFtueFragment;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownX:F

    return p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownY:F

    return v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/SlideUpFtueFragment;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownY:F

    return p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mCanStillBeTapEvent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mCanStillBeTapEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mLastSetY:F

    return v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/SlideUpFtueFragment;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mLastSetY:F

    return p1
.end method

.method static synthetic access$500()F
    .registers 1

    .prologue
    .line 17
    sget v0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->PX_PER_DP:F

    return v0
.end method

.method static synthetic access$602(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->resetView()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDragBox:Landroid/view/View;

    return-object v0
.end method

.method private resetView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 171
    iput-object v3, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 172
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->PX_PER_DP:F

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenDiscoverFtue(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f08029f

    const/4 v6, 0x0

    .line 51
    const v2, 0x7f0300ec

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 54
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_32

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0e016f

    const v5, 0x7f0e016e

    invoke-static {v3, v4, v5, v6, v6}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    :cond_32
    const v2, 0x7f0802a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDragBox:Landroid/view/View;

    .line 60
    new-instance v2, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;-><init>(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    return-object v1
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroyView()V

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_12

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 166
    :cond_12
    return-void
.end method
