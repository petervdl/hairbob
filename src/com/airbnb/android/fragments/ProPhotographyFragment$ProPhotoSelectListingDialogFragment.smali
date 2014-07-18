.class public Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProPhotographyFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProPhotoSelectListingDialogFragment"
.end annotation


# static fields
.field private static final LISTINGS:Ljava/lang/String; = "raw_listings"


# instance fields
.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

.field private rawListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setListViewData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    return-object v0
.end method

.method public static newInstance(Ljava/util/ArrayList;I)Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;
    .registers 5
    .param p1, "proPhotoAnalyticsOriginOrdinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)",
            "Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "listings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/Listing;>;"
    new-instance v1, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;-><init>()V

    .line 301
    .local v1, "f":Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string/jumbo v2, "raw_listings"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 304
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 305
    return-object v1
.end method

.method private setListViewData(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "rawListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "eligibleListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Listing;

    .line 364
    .local v3, "listing":Lcom/airbnb/android/models/Listing;
    sget-object v4, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    iget-object v4, v4, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 365
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 368
    .end local v3    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_27
    iget-object v4, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 369
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v4, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    return-void
.end method

.method private setupListView(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "rawListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030158

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "footer":Landroid/view/View;
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 342
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setListViewData(Ljava/util/List;)V

    .line 344
    new-instance v2, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 356
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "ProPhotographyFragment$ProPhotoSelectListingDialogFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ProPhotographyFragment$ProPhotoSelectListingDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_46

    .line 310
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "raw_listings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->rawListings:Ljava/util/List;

    .line 312
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setStyle(II)V

    .line 313
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity;->ORIGIN_FOR_ANALYTICS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-virtual {v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_50

    sget-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    :goto_38
    iput-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    .line 315
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v1, "select_listing"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_46
    move-exception v0

    const/4 v0, 0x0

    :try_start_48
    const-string/jumbo v1, "ProPhotographyFragment$ProPhotoSelectListingDialogFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_4f} :catch_46

    goto :goto_f

    .line 313
    :cond_50
    sget-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    goto :goto_38
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "ProPhotographyFragment$ProPhotoSelectListingDialogFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_3b

    .line 320
    :goto_9
    const v2, 0x7f03004c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 322
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 323
    .local v0, "cancelButton":Landroid/widget/TextView;
    new-instance v2, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/LoaderListView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 332
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 333
    iget-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->rawListings:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingDialogFragment;->setupListView(Ljava/util/List;)V

    .line 335
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "cancelButton":Landroid/widget/TextView;
    .end local v1    # "v":Landroid/view/View;
    :catch_3b
    move-exception v2

    const/4 v2, 0x0

    :try_start_3d
    const-string/jumbo v3, "ProPhotographyFragment$ProPhotoSelectListingDialogFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_44} :catch_3b

    goto :goto_9
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

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
