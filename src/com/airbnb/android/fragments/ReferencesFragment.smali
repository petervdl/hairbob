.class public Lcom/airbnb/android/fragments/ReferencesFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ReferencesFragment.java"


# static fields
.field private static final ARG_USERID:Ljava/lang/String; = "userId"


# instance fields
.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ReferencesFragment;)J
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReferencesFragment;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/airbnb/android/fragments/ReferencesFragment;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/ReferencesFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ReferencesFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/fragments/ReferencesFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method public static newInstance(J)Landroid/support/v4/app/Fragment;
    .registers 5
    .param p0, "userId"    # J

    .prologue
    .line 32
    new-instance v1, Lcom/airbnb/android/fragments/ReferencesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ReferencesFragment;-><init>()V

    .line 33
    .local v1, "f":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method

.method private setAdapter()V
    .registers 6

    .prologue
    .line 62
    new-instance v2, Lcom/airbnb/android/adapters/ReferencesAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0301b9

    invoke-direct {v2, v3, v4}, Lcom/airbnb/android/adapters/ReferencesAdapter;-><init>(Landroid/content/Context;I)V

    .line 64
    .local v2, "listAdapter":Lcom/airbnb/android/adapters/ReferencesAdapter;
    new-instance v1, Lcom/airbnb/android/fragments/ReferencesFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ReferencesFragment$1;-><init>(Lcom/airbnb/android/fragments/ReferencesFragment;)V

    .line 73
    .local v1, "factory":Lcom/airbnb/android/requests/AirRequestFactory;, "Lcom/airbnb/android/requests/AirRequestFactory<Lcom/airbnb/android/requests/ReferencesRequest;>;"
    new-instance v0, Lcom/airbnb/android/utils/InfiniteAdapter;

    const v3, 0x7f03014c

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/airbnb/android/utils/InfiniteAdapter;-><init>(Landroid/widget/ArrayAdapter;ILcom/airbnb/android/requests/AirRequestFactory;Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 76
    .local v0, "adapter":Lcom/airbnb/android/utils/InfiniteAdapter;, "Lcom/airbnb/android/utils/InfiniteAdapter<Lcom/airbnb/android/requests/ReferencesRequest;Lcom/airbnb/android/models/Recommendation;>;"
    new-instance v3, Lcom/airbnb/android/fragments/ReferencesFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ReferencesFragment$2;-><init>(Lcom/airbnb/android/fragments/ReferencesFragment;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/android/utils/InfiniteAdapter;->setRequestListener(Lcom/airbnb/android/utils/InfiniteAdapter$AdapterRequestListener;)V

    .line 91
    iget-object v3, p0, Lcom/airbnb/android/fragments/ReferencesFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ReferencesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/fragments/ReferencesFragment;->mUserId:J

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v1, 0x7f0300e1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "v":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/LoaderListView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ReferencesFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 53
    iget-object v1, p0, Lcom/airbnb/android/fragments/ReferencesFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 55
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ReferencesFragment;->setAdapter()V

    .line 57
    return-object v0
.end method
