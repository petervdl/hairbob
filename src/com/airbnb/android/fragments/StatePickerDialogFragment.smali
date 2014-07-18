.class public Lcom/airbnb/android/fragments/StatePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "StatePickerDialogFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/DialogFragment;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/airbnb/android/models/NameCodeItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG_STATE_CODE:Ljava/lang/String; = "stateCode"

.field private static final ARG_TITLE:Ljava/lang/String; = "dialogTitle"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"


# instance fields
.field private adapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

.field private allStatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private countryListView:Landroid/widget/ListView;

.field private listener:Lcom/airbnb/android/interfaces/NameCodePickerListener;

.field private mSelectedItem:I

.field private searchEditText:Landroid/widget/EditText;

.field private selectedStatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/NameCodeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->selectedStatesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)Lcom/airbnb/android/interfaces/NameCodePickerListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->listener:Lcom/airbnb/android/interfaces/NameCodePickerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/StatePickerDialogFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/StatePickerDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    .prologue
    .line 31
    iget v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->countryListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private buildStateList()V
    .registers 10

    .prologue
    .line 194
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "StateList":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_15
    if-ge v3, v4, :cond_39

    aget-object v6, v1, v3

    .line 198
    .local v6, "stateItem":Ljava/lang/String;
    new-instance v2, Lcom/airbnb/android/models/NameCodeItem;

    invoke-direct {v2}, Lcom/airbnb/android/models/NameCodeItem;-><init>()V

    .line 199
    .local v2, "c":Lcom/airbnb/android/models/NameCodeItem;
    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "state":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v2, v7}, Lcom/airbnb/android/models/NameCodeItem;->setCode(Ljava/lang/String;)V

    .line 201
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v2, v7}, Lcom/airbnb/android/models/NameCodeItem;->setName(Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 205
    .end local v2    # "c":Lcom/airbnb/android/models/NameCodeItem;
    .end local v5    # "state":[Ljava/lang/String;
    .end local v6    # "stateItem":Ljava/lang/String;
    :cond_39
    iget-object v7, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    invoke-static {v7, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->selectedStatesList:Ljava/util/List;

    .line 207
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/fragments/StatePickerDialogFragment;
    .registers 5
    .param p0, "dialogTitle"    # Ljava/lang/String;
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v1, Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;-><init>()V

    .line 88
    .local v1, "picker":Lcom/airbnb/android/fragments/StatePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "dialogTitle"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "stateCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
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
    iget-object v2, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->selectedStatesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 219
    iget-object v2, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->selectedStatesList:Ljava/util/List;

    iget-object v3, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_12
    iget-object v2, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->adapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/NameCodeListAdapter;->notifyDataSetChanged()V

    .line 230
    return-void

    .line 221
    :cond_18
    iget-object v2, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

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
    iget-object v2, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->selectedStatesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method


# virtual methods
.method public compare(Lcom/airbnb/android/models/NameCodeItem;Lcom/airbnb/android/models/NameCodeItem;)I
    .registers 5
    .param p1, "lhs"    # Lcom/airbnb/android/models/NameCodeItem;
    .param p2, "rhs"    # Lcom/airbnb/android/models/NameCodeItem;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/airbnb/android/models/NameCodeItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/airbnb/android/models/NameCodeItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->compare(Lcom/airbnb/android/models/NameCodeItem;Lcom/airbnb/android/models/NameCodeItem;)I

    move-result v0

    return v0
.end method

.method public getSearchEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    .prologue
    const/4 v9, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v7, "StatePickerDialogFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_a7

    .line 102
    :goto_a
    const v6, 0x7f030086

    invoke-virtual {p1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, "view":Landroid/view/View;
    const/4 v6, -0x1

    iput v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->mSelectedItem:I

    .line 106
    invoke-direct {p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->buildStateList()V

    .line 108
    const/4 v4, 0x0

    .line 111
    .local v4, "stateCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_33

    .line 113
    const-string/jumbo v6, "dialogTitle"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "dialogTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    const-string/jumbo v6, "stateCode"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .end local v2    # "dialogTitle":Ljava/lang/String;
    :cond_33
    const v6, 0x7f08018b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->searchEditText:Landroid/widget/EditText;

    .line 121
    const v6, 0x7f08018c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->countryListView:Landroid/widget/ListView;

    .line 125
    new-instance v6, Lcom/airbnb/android/adapters/NameCodeListAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->selectedStatesList:Ljava/util/List;

    invoke-direct {v6, v7, v8}, Lcom/airbnb/android/adapters/NameCodeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->adapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

    .line 126
    iget-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->countryListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->adapter:Lcom/airbnb/android/adapters/NameCodeListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->countryListView:Landroid/widget/ListView;

    new-instance v7, Lcom/airbnb/android/fragments/StatePickerDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->searchEditText:Landroid/widget/EditText;

    new-instance v7, Lcom/airbnb/android/fragments/StatePickerDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment$2;-><init>(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 171
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_78
    iget-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_94

    .line 172
    iget-object v6, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->allStatesList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/NameCodeItem;

    .line 174
    .local v1, "country":Lcom/airbnb/android/models/NameCodeItem;
    invoke-virtual {v1}, Lcom/airbnb/android/models/NameCodeItem;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 175
    iput v3, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->mSelectedItem:I

    .line 181
    .end local v1    # "country":Lcom/airbnb/android/models/NameCodeItem;
    .end local v3    # "i":I
    :cond_94
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;-><init>(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v5

    .line 4294967295
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "stateCode":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :catch_a7
    move-exception v6

    const/4 v6, 0x0

    :try_start_a9
    const-string/jumbo v7, "StatePickerDialogFragment#onCreateView"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b0} :catch_a7

    goto/16 :goto_a

    .line 171
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "country":Lcom/airbnb/android/models/NameCodeItem;
    .restart local v3    # "i":I
    .restart local v4    # "stateCode":Ljava/lang/String;
    .restart local v5    # "view":Landroid/view/View;
    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_78
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
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->listener:Lcom/airbnb/android/interfaces/NameCodePickerListener;

    .line 74
    return-void
.end method
