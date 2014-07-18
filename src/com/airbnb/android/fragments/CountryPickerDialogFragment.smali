.class public Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CountryPickerDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final ARG_COUNTRY_CODES:Ljava/lang/String; = "country_codes"

.field private static final ARG_COUNTRY_NAMES:Ljava/lang/String; = "country_names"

.field private static final ARG_SELECTED_COUNTRY:Ljava/lang/String; = "sel_country_code"

.field private static final ARG_TITLE:Ljava/lang/String; = "dialog_title"

.field public static final EXTRA_COUNTRY:Ljava/lang/String; = "country"


# instance fields
.field private mCountriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCountriesListSearchSubset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

.field private mListener:Lcom/airbnb/android/interfaces/NameCodePickerListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)Lcom/airbnb/android/interfaces/NameCodePickerListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListener:Lcom/airbnb/android/interfaces/NameCodePickerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method private buildCountryList()V
    .registers 13

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "country_codes"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 157
    .local v3, "countryCodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_5b

    .line 158
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "countries":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "countryCodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    .end local v1    # "countries":[Ljava/lang/String;
    .restart local v3    # "countryCodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_21
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "country_names"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 166
    .local v4, "countryNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_64

    const/4 v9, 0x1

    .line 167
    .local v9, "sort":Z
    :goto_2f
    if-nez v4, :cond_66

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "countryNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .restart local v4    # "countryNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_66

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "countryCode":Ljava/lang/String;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v7, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 161
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v4    # "countryNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "language":Ljava/lang/String;
    .end local v8    # "locale":Ljava/util/Locale;
    .end local v9    # "sort":Z
    :cond_5b
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 166
    .restart local v4    # "countryNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_64
    const/4 v9, 0x0

    goto :goto_2f

    .line 179
    .restart local v9    # "sort":Z
    :cond_66
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    .line 180
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_93

    .line 181
    new-instance v0, Lcom/airbnb/android/models/NameCodeItem;

    invoke-direct {v0}, Lcom/airbnb/android/models/NameCodeItem;-><init>()V

    .line 182
    .local v0, "c":Lcom/airbnb/android/models/NameCodeItem;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/airbnb/android/models/NameCodeItem;->setCode(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/airbnb/android/models/NameCodeItem;->setName(Ljava/lang/String;)V

    .line 184
    iget-object v10, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 188
    .end local v0    # "c":Lcom/airbnb/android/models/NameCodeItem;
    :cond_93
    if-eqz v9, :cond_9f

    .line 189
    iget-object v10, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    new-instance v11, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$4;

    invoke-direct {v11, p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$4;-><init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    :cond_9f
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;

    .line 199
    return-void
.end method

.method private static getIndexOf(Ljava/util/List;Ljava/lang/String;)I
    .registers 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "countriesList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/NameCodeItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 203
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/NameCodeItem;

    .line 204
    .local v0, "country":Lcom/airbnb/android/models/NameCodeItem;
    invoke-virtual {v0}, Lcom/airbnb/android/models/NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 208
    .end local v0    # "country":Lcom/airbnb/android/models/NameCodeItem;
    .end local v1    # "i":I
    :goto_17
    return v1

    .line 202
    .restart local v0    # "country":Lcom/airbnb/android/models/NameCodeItem;
    .restart local v1    # "i":I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "country":Lcom/airbnb/android/models/NameCodeItem;
    :cond_1b
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    .registers 3
    .param p0, "dialogTitle"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v0, v0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    .registers 4
    .param p0, "dialogTitle"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/airbnb/android/fragments/CountryPickerDialogFragment;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    .registers 7
    .param p0, "dialogTitle"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/airbnb/android/fragments/CountryPickerDialogFragment;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "countryCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "countryNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;-><init>()V

    .line 73
    .local v1, "picker":Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "dialog_title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v2, "sel_country_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v2, "country_codes"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    const-string/jumbo v2, "country_names"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method

.method private search(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v2, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 219
    iget-object v2, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;

    iget-object v3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_12
    iget-object v2, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListAdapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/NameCodeListAdapter;->notifyDataSetChanged()V

    .line 230
    return-void

    .line 221
    :cond_18
    iget-object v2, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/NameCodeItem;

    .line 222
    .local v1, "nameCodeItem":Lcom/airbnb/android/models/NameCodeItem;
    invoke-virtual {v1}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 224
    iget-object v2, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    .prologue
    const/4 v9, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v7, "CountryPickerDialogFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_7c

    .line 85
    :goto_a
    const v6, 0x7f030086

    invoke-virtual {p1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 88
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_25

    .line 90
    const-string/jumbo v6, "dialog_title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "dialogTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    .end local v2    # "dialogTitle":Ljava/lang/String;
    :cond_25
    invoke-direct {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->buildCountryList()V

    .line 96
    const v6, 0x7f08018c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 97
    .local v1, "countryListView":Landroid/widget/ListView;
    new-instance v6, Lcom/airbnb/android/adapters/NameCodeListAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesListSearchSubset:Ljava/util/List;

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/adapters/NameCodeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListAdapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

    .line 98
    iget-object v6, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListAdapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    new-instance v6, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    const v6, 0x7f08018b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 121
    .local v3, "searchEditText":Landroid/widget/EditText;
    new-instance v6, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v6, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mCountriesList:Ljava/util/List;

    const-string/jumbo v7, "sel_country_code"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->getIndexOf(Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "selectedItem":I
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;

    invoke-direct {v7, p0, v4, v1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;ILandroid/widget/ListView;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v5

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "countryListView":Landroid/widget/ListView;
    .end local v3    # "searchEditText":Landroid/widget/EditText;
    .end local v4    # "selectedItem":I
    .end local v5    # "view":Landroid/view/View;
    :catch_7c
    move-exception v6

    const/4 v6, 0x0

    :try_start_7e
    const-string/jumbo v7, "CountryPickerDialogFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_85} :catch_7c

    goto :goto_a
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

.method public setListener(Lcom/airbnb/android/interfaces/NameCodePickerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/interfaces/NameCodePickerListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->mListener:Lcom/airbnb/android/interfaces/NameCodePickerListener;

    .line 50
    return-void
.end method
