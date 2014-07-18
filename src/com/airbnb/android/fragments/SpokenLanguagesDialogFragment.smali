.class public Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SpokenLanguagesDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final EXTRA_SPOKEN_LANGUAGES:Ljava/lang/String; = "spoken_languages"

.field public static final REQUEST_CODE_LANGUAGES:I = 0x2be


# instance fields
.field private mAdapter:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

.field mApplyButton:Lcom/airbnb/android/views/StickyButton;

.field private mLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/SpokenLanguage;",
            ">;"
        }
    .end annotation
.end field

.field mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->populateLanguages(Ljava/util/ArrayList;)V

    return-void
.end method

.method private fetchSpokenLanguages()V
    .registers 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 106
    new-instance v0, Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;

    new-instance v1, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    .line 123
    .local v0, "languagesRequest":Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetSpokenLanguagesRequest;->execute()V

    .line 124
    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;-><init>()V

    return-object v0
.end method

.method private populateLanguages(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/SpokenLanguage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/SpokenLanguage;>;"
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mAdapter:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;->addAll(Ljava/util/Collection;)V

    .line 129
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mAdapter:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method private setupListViewAdapter()V
    .registers 8

    .prologue
    .line 88
    iget-object v4, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 89
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 91
    .local v0, "dividerHeight":I
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 94
    new-instance v1, Landroid/view/View;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "footer":Landroid/view/View;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 96
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 99
    new-instance v4, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mAdapter:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    .line 100
    iget-object v4, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mAdapter:Lcom/airbnb/android/adapters/SpokenLanguagesAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ef

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "v":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f0e018b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mApplyButton:Lcom/airbnb/android/views/StickyButton;

    const v3, 0x7f0e0085

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 55
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mApplyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v3, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->setupListViewAdapter()V

    .line 67
    if-nez p1, :cond_4c

    .line 68
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->fetchSpokenLanguages()V

    .line 75
    :goto_35
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 70
    :cond_4c
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 71
    const-string/jumbo v2, "spoken_languages"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    .local v0, "savedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/SpokenLanguage;>;"
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->populateLanguages(Ljava/util/ArrayList;)V

    goto :goto_35
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v0, "spoken_languages"

    iget-object v1, p0, Lcom/airbnb/android/fragments/SpokenLanguagesDialogFragment;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    return-void
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
