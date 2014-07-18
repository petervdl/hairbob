.class public abstract Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseVerifiedIdFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$AnimationCompletionListener;
    }
.end annotation


# static fields
.field private static final SHOW_BADGE_BEFORE_TRANSITION_DURATION:I = 0xbb8

.field private static final SHOW_BADGE_DELAY:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->showConfirmedFragment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showConfirmedFragment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "verificationHeader"    # Ljava/lang/String;
    .param p2, "verificationDescription"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/verifiedid/ConfirmedVerificationFragment;

    move-result-object v0

    .line 48
    .local v0, "confirmationFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 49
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f040006

    const v3, 0x7f040008

    const v4, 0x7f040007

    const v5, 0x7f040009

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;->getContentFragmentId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    return-void
.end method


# virtual methods
.method public animateCompletion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "verificationHeader"    # Ljava/lang/String;
    .param p2, "verificationDescription"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 24
    .local v0, "animationHander":Landroid/os/Handler;
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$1;-><init>(Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    new-instance v1, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment$2;-><init>(Lcom/airbnb/android/fragments/verifiedid/BaseVerifiedIdFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method public abstract getCircleBadgeView()Lcom/airbnb/android/views/CircleBadgeView;
.end method

.method public abstract getContentFragmentId()I
.end method

.method public abstract getVerificationSuccessDescription()Ljava/lang/String;
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public abstract setActiveState()V
.end method

.method public abstract setPendingState()V
.end method
