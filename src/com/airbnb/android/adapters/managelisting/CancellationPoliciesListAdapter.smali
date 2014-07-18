.class public Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CancellationPoliciesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/CancellationPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "currentSelected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CancellationPolicy;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/CancellationPolicy;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput p4, p0, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;->mCurrentSelected:I

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 29
    if-nez p2, :cond_41

    .line 30
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030132

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;)V

    .line 33
    .local v1, "viewHolder":Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;
    const v2, 0x7f0800b7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 34
    const v2, 0x7f080347

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    .line 35
    const v2, 0x7f080348

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 36
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .end local v1    # "viewHolder":Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;
    :cond_41
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;

    .line 43
    .restart local v1    # "viewHolder":Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CancellationPolicy;

    .line 45
    .local v0, "policy":Lcom/airbnb/android/models/CancellationPolicy;
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/CancellationPolicy;->getFormattedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/CancellationPolicy;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget v2, p0, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;->mCurrentSelected:I

    if-ne p1, v2, :cond_72

    .line 50
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 55
    :goto_69
    new-instance v2, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;-><init>(Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    return-object p2

    .line 52
    :cond_72
    iget-object v2, v1, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_69
.end method
