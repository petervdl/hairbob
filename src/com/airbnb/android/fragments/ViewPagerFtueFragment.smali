.class public Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewPagerFtueFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_FIRST_PAGE:Ljava/lang/String; = "first_page"

.field private static final ARG_STICKY_BUTTON_COLOR:Ljava/lang/String; = "sticky_button_color"

.field private static final ARG_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field private static final SLIDE_IN_DELAY:I = 0xc8

.field private static final SLIDE_IN_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFirstPage:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static findFragment(Landroid/support/v4/app/FragmentManager;IIZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .registers 8
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "titleRes"    # I
    .param p2, "subtitleRes"    # I
    .param p3, "isFirstPage"    # Z
    .param p4, "stickyButtonColorRes"    # I

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "title":Ljava/lang/String;
    if-lez p1, :cond_b

    .line 38
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_b
    const/4 v0, 0x0

    .line 41
    .local v0, "subtitle":Ljava/lang/String;
    if-lez p2, :cond_16

    .line 42
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_16
    invoke-static {p0, v1, v0, p3, p4}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    move-result-object v2

    return-object v2
.end method

.method public static findFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    .registers 8
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "isFirstPage"    # Z
    .param p4, "stickyButtonColorRes"    # I

    .prologue
    .line 51
    sget-object v2, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    .line 52
    .local v1, "fragment":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    if-nez v1, :cond_35

    .line 53
    new-instance v1, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;

    .end local v1    # "fragment":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;-><init>()V

    .line 55
    .restart local v1    # "fragment":Lcom/airbnb/android/fragments/ViewPagerFtueFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "first_page"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    if-eqz p1, :cond_22

    .line 59
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_22
    if-eqz p2, :cond_2a

    .line 62
    const-string/jumbo v2, "subtitle"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_2a
    if-lez p4, :cond_32

    .line 65
    const-string/jumbo v2, "sticky_button_color"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    :cond_32
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_35
    return-object v1
.end method

.method private setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "goneIfNotSet"    # Z

    .prologue
    .line 130
    if-eqz p2, :cond_6

    .line 131
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_5
    return-void

    .line 133
    :cond_6
    if-eqz p3, :cond_e

    const/16 v0, 0x8

    :goto_a
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_e
    const/4 v0, 0x4

    goto :goto_a
.end method

.method private setupIcon(Landroid/widget/ScrollView;IZ)V
    .registers 7
    .param p1, "view"    # Landroid/widget/ScrollView;
    .param p2, "iconResId"    # I
    .param p3, "hasSubtitle"    # Z

    .prologue
    .line 109
    if-lez p2, :cond_1c

    .line 110
    const v2, 0x7f08019a

    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    if-eqz p3, :cond_1c

    .line 113
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    .local v1, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 117
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    return-void
.end method

.method private slideInContentIfNeeded(ZLandroid/widget/ScrollView;)V
    .registers 6
    .param p1, "shouldShowAnim"    # Z
    .param p2, "view"    # Landroid/widget/ScrollView;

    .prologue
    .line 120
    if-eqz p1, :cond_1d

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->mFirstPage:Z

    .line 122
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 123
    .local v0, "fragAnim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 125
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 127
    .end local v0    # "fragAnim":Landroid/view/animation/Animation;
    :cond_1d
    return-void
.end method


# virtual methods
.method public getStickyButtonColor()I
    .registers 4

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sticky_button_color"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v5, "ViewPagerFtueFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_b} :catch_52

    .line 75
    :goto_b
    const v4, 0x7f0300fc

    invoke-virtual {p1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 77
    .local v3, "view":Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    if-nez p3, :cond_23

    .line 80
    const-string/jumbo v4, "first_page"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->mFirstPage:Z

    .line 83
    :cond_23
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v4, "subtitle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "subtitle":Ljava/lang/String;
    const v4, 0x7f0800b7

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4, v2, v8}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 87
    const v4, 0x7f0800b8

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v8}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->setTextViewContent(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 89
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->mFirstPage:Z

    invoke-direct {p0, v4, v3}, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->slideInContentIfNeeded(ZLandroid/widget/ScrollView;)V

    .line 90
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v3

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "subtitle":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "view":Landroid/widget/ScrollView;
    :catch_52
    move-exception v4

    const/4 v4, 0x0

    :try_start_54
    const-string/jumbo v5, "ViewPagerFtueFragment#onCreateView"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5b} :catch_52

    goto :goto_b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string/jumbo v0, "first_page"

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueFragment;->mFirstPage:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    return-void
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
