.class public Lcom/airbnb/android/activities/ImagesActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ImagesActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final INTENT_EXTRA_PAGER_ITEM:Ljava/lang/String; = "pager_item"

.field private static final INTENT_EXTRA_PHOTOS:Ljava/lang/String; = "photos"


# instance fields
.field private mImagePager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static intentForPhotos(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "currentItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ImagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "photos"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 26
    const-string/jumbo v1, "pager_item"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "ImagesActivity"

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_8
    iget-object v3, p0, Lcom/airbnb/android/activities/ImagesActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v4, "ImagesActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_11} :catch_58

    .line 32
    :goto_11
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0, v6, v6}, Lcom/airbnb/android/activities/ImagesActivity;->overridePendingTransition(II)V

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ImagesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 36
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/ImagesActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ImagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "photos"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 40
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    const-string/jumbo v3, "pager_item"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "currentImage":I
    const v3, 0x7f080033

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/ImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/airbnb/android/activities/ImagesActivity;->mImagePager:Landroid/support/v4/view/ViewPager;

    .line 43
    iget-object v3, p0, Lcom/airbnb/android/activities/ImagesActivity;->mImagePager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/airbnb/android/adapters/groups/PhotosAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/ImagesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v5, v2, v7, v6}, Lcom/airbnb/android/adapters/groups/PhotosAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;ZZ)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 44
    iget-object v3, p0, Lcom/airbnb/android/activities/ImagesActivity;->mImagePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 45
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "currentImage":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    :catch_58
    move-exception v3

    const/4 v3, 0x0

    :try_start_5a
    const-string/jumbo v4, "ImagesActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_61} :catch_58

    goto :goto_11
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 50
    invoke-virtual {p0, v0, v0}, Lcom/airbnb/android/activities/ImagesActivity;->overridePendingTransition(II)V

    .line 51
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
