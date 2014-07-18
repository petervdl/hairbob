.class public abstract Lcom/airbnb/android/activities/SlideUpTransparentActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "SlideUpTransparentActivity.java"


# static fields
.field private static final ALPHA_ANIM_DELAY:I = 0x15e

.field private static final ALPHA_ANIM_DURATION:I = 0x190

.field private static final ALPHA_TO_VALUE:F = 0.6f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTranslucentBg:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/SlideUpTransparentActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->mTranslucentBg:Landroid/view/View;

    return-object v0
.end method

.method private fadeOutTransparentView()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method


# virtual methods
.method public dismissContent(Z)V
    .registers 3
    .param p1, "save"    # Z

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->fadeOutTransparentView()V

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->finish()V

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->overridePendingTransition(II)V

    .line 52
    return-void
.end method

.method protected getAlphaAnimDelay()I
    .registers 2

    .prologue
    .line 74
    const/16 v0, 0x15e

    return v0
.end method

.method protected getFragmentTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSlideUpTransparentFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onBackPressed()V

    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->fadeOutTransparentView()V

    .line 45
    invoke-virtual {p0, v0, v0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v2, v2}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->overridePendingTransition(II)V

    .line 28
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->setContentView(I)V

    .line 29
    const v2, 0x7f080041

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->mTranslucentBg:Landroid/view/View;

    .line 31
    if-nez p1, :cond_3c

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 33
    .local v1, "fragManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->getSlideUpTransparentFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    move-result-object v0

    .line 34
    .local v0, "demoFragment":Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f040011

    const v4, 0x7f040010

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f080047

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 39
    .end local v0    # "demoFragment":Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .end local v1    # "fragManager":Landroid/support/v4/app/FragmentManager;
    :cond_3c
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onPause()V

    .line 57
    invoke-direct {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->fadeOutTransparentView()V

    .line 58
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->mTranslucentBg:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/activities/SlideUpTransparentActivity$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity$1;-><init>(Lcom/airbnb/android/activities/SlideUpTransparentActivity;)V

    invoke-virtual {p0}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->getAlphaAnimDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method
