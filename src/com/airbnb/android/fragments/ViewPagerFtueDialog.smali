.class public abstract Lcom/airbnb/android/fragments/ViewPagerFtueDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ViewPagerFtueDialog.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;
    }
.end annotation


# instance fields
.field protected mCurrPage:I

.field protected mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mStickyButton:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mCurrPage:I

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;ILcom/airbnb/android/views/DotsCounter;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ViewPagerFtueDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/airbnb/android/views/DotsCounter;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->goToNextFtuePage(ILcom/airbnb/android/views/DotsCounter;)V

    return-void
.end method

.method private goToNextFtuePage(ILcom/airbnb/android/views/DotsCounter;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "mDots"    # Lcom/airbnb/android/views/DotsCounter;

    .prologue
    .line 128
    invoke-virtual {p2, p1}, Lcom/airbnb/android/views/DotsCounter;->setSelectedDot(I)V

    .line 129
    iput p1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mCurrPage:I

    .line 130
    return-void
.end method


# virtual methods
.method public abstract forStep(I)Landroid/support/v4/app/Fragment;
.end method

.method protected getLastPageIndex()I
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public abstract getNumPages()I
.end method

.method public abstract getStickyButtonClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getStickyButtonTitle()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "ViewPagerFtueDialog"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ViewPagerFtueDialog#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_1b

    .line 51
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->setStyle(II)V

    .line 53
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    :try_start_1d
    const-string/jumbo v1, "ViewPagerFtueDialog#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_24} :catch_1b

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "ViewPagerFtueDialog#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_72

    .line 57
    :goto_a
    const v4, 0x7f0301e2

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "v":Landroid/view/View;
    const v4, 0x7f080518

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/views/StickyButton;

    iput-object v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 60
    iget-object v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v4, v7}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 61
    iget-object v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getStickyButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getStickyButtonTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StickyButton;->setTitle(Ljava/lang/String;)V

    .line 63
    const v4, 0x7f080517

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/ClickableViewPager;

    .line 64
    .local v3, "viewPager":Lcom/airbnb/android/views/ClickableViewPager;
    new-instance v4, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;

    invoke-direct {v4, p0, v3}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;-><init>(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;Lcom/airbnb/android/views/ClickableViewPager;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/ClickableViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v4, 0x7f08003f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/DotsCounter;

    .line 76
    .local v0, "dots":Lcom/airbnb/android/views/DotsCounter;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getNumPages()I

    move-result v1

    .line 77
    .local v1, "numDots":I
    const/4 v4, 0x1

    if-le v1, v4, :cond_7c

    .line 78
    invoke-virtual {v0, v7}, Lcom/airbnb/android/views/DotsCounter;->setVisibility(I)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V

    .line 81
    new-instance v4, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;

    invoke-direct {v4, p0, v0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$2;-><init>(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;Lcom/airbnb/android/views/DotsCounter;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    :goto_62
    new-instance v4, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$FtueAdapter;-><init>(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 113
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "dots":Lcom/airbnb/android/views/DotsCounter;
    .end local v1    # "numDots":I
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "viewPager":Lcom/airbnb/android/views/ClickableViewPager;
    :catch_72
    move-exception v4

    const/4 v4, 0x0

    :try_start_74
    const-string/jumbo v5, "ViewPagerFtueDialog#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7b} :catch_72

    goto :goto_a

    .line 109
    .restart local v0    # "dots":Lcom/airbnb/android/views/DotsCounter;
    .restart local v1    # "numDots":I
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "viewPager":Lcom/airbnb/android/views/ClickableViewPager;
    :cond_7c
    invoke-virtual {v0, v7}, Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V

    .line 110
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/airbnb/android/views/DotsCounter;->setVisibility(I)V

    goto :goto_62
.end method

.method public onStart()V
    .registers 4

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 118
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 121
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
