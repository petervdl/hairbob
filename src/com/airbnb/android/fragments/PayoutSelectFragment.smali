.class public Lcom/airbnb/android/fragments/PayoutSelectFragment;
.super Landroid/support/v4/app/Fragment;
.source "PayoutSelectFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;
    }
.end annotation


# static fields
.field private static final SAVED_PAYMENT_METHOD:Ljava/lang/String; = "payment_method"

.field private static final SELECTED_COUNTRY:Ljava/lang/String; = "selected_country"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mPaymentMethodResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCountry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PayoutSelectFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutSelectFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/PayoutSelectFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutSelectFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->setAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/PayoutSelectFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutSelectFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mPaymentMethodResponse:Ljava/util/List;

    return-object p1
.end method

.method private loadSupportedPayoutMethods()V
    .registers 4

    .prologue
    .line 107
    new-instance v0, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mSelectedCountry:Ljava/lang/String;

    new-instance v2, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment$2;-><init>(Lcom/airbnb/android/fragments/PayoutSelectFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 130
    .local v0, "request":Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/PayoutMethodsForCountryRequest;->execute()V

    .line 131
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/PayoutSelectFragment;
    .registers 4
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v1, Lcom/airbnb/android/fragments/PayoutSelectFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;-><init>()V

    .line 40
    .local v1, "f":Lcom/airbnb/android/fragments/PayoutSelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "selected_country"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private setAdapter(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "payoutMethods":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/PaymentMethodInfo;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03014f

    invoke-direct {v1, v2, v3, p1}, Lcom/airbnb/android/fragments/PayoutSelectFragment$PayoutMethodAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const-string/jumbo v0, "PayoutSelectFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "PayoutSelectFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_f} :catch_21

    .line 48
    :goto_f
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-eqz p1, :cond_1d

    .line 50
    const-string/jumbo v0, "payment_method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mPaymentMethodResponse:Ljava/util/List;

    .line 52
    :cond_1d
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_21
    move-exception v0

    const/4 v0, 0x0

    :try_start_23
    const-string/jumbo v1, "PayoutSelectFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2a} :catch_21

    goto :goto_f
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v2, "PayoutSelectFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_b} :catch_33

    .line 63
    :goto_b
    const v1, 0x7f0300a9

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderListView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "selected_country"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mSelectedCountry:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mSelectedCountry:Ljava/lang/String;

    if-nez v1, :cond_3d

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "must select a country"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    throw v1

    .line 4294967295
    :catch_33
    move-exception v1

    const/4 v1, 0x0

    :try_start_35
    const-string/jumbo v2, "PayoutSelectFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3c} :catch_33

    goto :goto_b

    .line 70
    :cond_3d
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 72
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/airbnb/android/fragments/PayoutSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment$1;-><init>(Lcom/airbnb/android/fragments/PayoutSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030150

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 96
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mPaymentMethodResponse:Ljava/util/List;

    if-eqz v1, :cond_74

    .line 97
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 98
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mPaymentMethodResponse:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->setAdapter(Ljava/util/List;)V

    .line 103
    :goto_6e
    iget-object v1, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 100
    :cond_74
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PayoutSelectFragment;->loadSupportedPayoutMethods()V

    goto :goto_6e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    const-string/jumbo v0, "payment_method"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PayoutSelectFragment;->mPaymentMethodResponse:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 59
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
