.class public Lcom/airbnb/android/fragments/ListingSelectDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ListingSelectDialogFragment.java"


# static fields
.field public static final LISTING:Ljava/lang/String; = "listing"

.field public static final LISTINGS:Ljava/lang/String; = "listings"


# instance fields
.field private mListings:Ljava/util/List;
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
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/ListingSelectDialogFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->mListings:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;ILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ListingSelectDialogFragment;
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/airbnb/android/fragments/ListingSelectDialogFragment;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "listings"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 30
    new-instance v2, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v3, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    invoke-direct {v3}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;-><init>()V

    invoke-direct {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v3, 0x7f0e06d8

    invoke-virtual {v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withListView(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;

    .line 34
    .local v1, "dialog":Lcom/airbnb/android/fragments/ListingSelectDialogFragment;
    invoke-virtual {v1, p2, p1}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 35
    return-object v1
.end method


# virtual methods
.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/ListingSelectDialogFragment;)V

    return-object v0
.end method

.method protected getListAdapter()Landroid/widget/ListAdapter;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->mListings:Ljava/util/List;

    sget-object v2, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS_MINI:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Ljava/util/List;Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ZenDialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/ListingSelectDialogFragment;->mListings:Ljava/util/List;

    .line 43
    return-void
.end method
