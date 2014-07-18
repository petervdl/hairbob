.class public Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogViewPagerFtueFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_ICON_RES:Ljava/lang/String; = "icon"

.field private static final ARG_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final INVALID_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static findFragment(Landroid/support/v4/app/FragmentManager;III)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;
    .registers 7
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "iconRes"    # I
    .param p2, "titleRes"    # I
    .param p3, "subtitleRes"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "subtitle":Ljava/lang/String;
    invoke-static {p0, p1, v1, v0}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->findFragment(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    move-result-object v2

    return-object v2
.end method

.method public static findFragment(Landroid/support/v4/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;
    .registers 7
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "iconRes"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v2, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    .line 36
    .local v1, "fragment":Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;
    if-nez v1, :cond_29

    .line 37
    new-instance v1, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;

    .end local v1    # "fragment":Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;-><init>()V

    .line 39
    .restart local v1    # "fragment":Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "subtitle"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_29
    return-object v1
.end method

.method private setupIcon(Landroid/view/View;I)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "iconResId"    # I

    .prologue
    .line 68
    if-lez p2, :cond_15

    .line 69
    const v2, 0x7f0a000f

    invoke-static {p2, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f08019a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    .local v1, "image":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_15
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v10, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v8, "DialogViewPagerFtueFragment#onCreateView"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_50

    .line 51
    :goto_a
    const v7, 0x7f03008b

    invoke-virtual {p1, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 53
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v7, "icon"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 55
    .local v1, "iconResId":I
    const-string/jumbo v7, "title"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v7, "subtitle"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "subtitle":Ljava/lang/String;
    invoke-direct {p0, v6, v1}, Lcom/airbnb/android/fragments/DialogViewPagerFtueFragment;->setupIcon(Landroid/view/View;I)V

    .line 59
    const v7, 0x7f0800b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    .local v5, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v7, 0x7f0800b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, "subtitleTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v6

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "iconResId":I
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v3    # "subtitleTextView":Landroid/widget/TextView;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "titleTextView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :catch_50
    move-exception v7

    const/4 v7, 0x0

    :try_start_52
    const-string/jumbo v8, "DialogViewPagerFtueFragment#onCreateView"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_59} :catch_50

    goto :goto_a
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
