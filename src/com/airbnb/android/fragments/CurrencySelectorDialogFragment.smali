.class public Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "CurrencySelectorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;
    }
.end annotation


# static fields
.field private static final ARG_SELECTED:Ljava/lang/String; = "selected"

.field private static final KEY_CURRENCIES:Ljava/lang/String; = "currencies"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mCurrences:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    return-object v0
.end method

.method public static newInstance(ILjava/util/List;)Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;
    .registers 5
    .param p0, "selectedIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Currency;",
            ">;)",
            "Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Currency;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "selected"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v1, "currencies"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v2, 0x7f0e06d5

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withListView(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;

    return-object v1
.end method


# virtual methods
.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 57
    new-instance v0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;)V

    return-object v0
.end method

.method protected getListAdapter()Landroid/widget/ListAdapter;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/airbnb/android/adapters/CurrencyAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mCurrences:Ljava/util/List;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v5, "selected"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/CurrencyAdapter;-><init>(Landroid/content/Context;IILjava/util/List;I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/ZenDialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "currencies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mCurrences:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setOnCurrencySelectedDialogListener(Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;

    .line 81
    return-void
.end method
