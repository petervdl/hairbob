.class Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountSelectorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AccountSelectorDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthorizedAccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;,
        Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 83
    const/4 v2, -0x1

    iput v2, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mSelectedIndex:I

    .line 94
    iput-object p4, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mAccounts:Ljava/util/List;

    .line 96
    invoke-static {p1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 97
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_2d

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 99
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->getId()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_2e

    .line 100
    iput v1, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mSelectedIndex:I

    .line 105
    .end local v1    # "i":I
    :cond_2d
    return-void

    .line 98
    .restart local v1    # "i":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 121
    sget-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->NewAccount:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->ordinal()I

    move-result v0

    .line 125
    :goto_e
    return v0

    .line 122
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_20

    .line 123
    sget-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->BecomeUser:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_e

    .line 125
    :cond_20
    sget-object v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->Account:Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 131
    if-nez p2, :cond_2a

    .line 132
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 133
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109000f

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 135
    new-instance v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;-><init>(Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;)V

    .line 137
    .local v0, "holder":Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;->name:Landroid/widget/CheckedTextView;

    .line 138
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    .end local v0    # "holder":Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;

    .line 142
    .restart local v0    # "holder":Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;
    const-string/jumbo v2, ""

    .line 143
    .local v2, "text":Ljava/lang/String;
    sget-object v3, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$2;->$SwitchMap$com$airbnb$android$fragments$AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType:[I

    invoke-static {}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->values()[Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->getItemViewType(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_7e

    .line 154
    :goto_48
    iget-object v3, v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;->name:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v5, v0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$ViewHolder;->name:Landroid/widget/CheckedTextView;

    iget v3, p0, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->mSelectedIndex:I

    if-ne p1, v3, :cond_7b

    const/4 v3, 0x1

    :goto_54
    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    return-object p2

    .line 145
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    invoke-virtual {v3}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 146
    goto :goto_48

    .line 148
    :pswitch_63
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0151

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    goto :goto_48

    .line 151
    :pswitch_6f
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0e0158

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_48

    :cond_7b
    move v3, v4

    .line 155
    goto :goto_54

    .line 143
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_63
        :pswitch_6f
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 115
    invoke-static {}, Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;->values()[Lcom/airbnb/android/fragments/AccountSelectorDialogFragment$AuthorizedAccountAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
