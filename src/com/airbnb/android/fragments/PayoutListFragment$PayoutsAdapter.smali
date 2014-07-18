.class Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PayoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/PayoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayoutsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/PayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPayoutCount:I

.field private final mResource:I

.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutListFragment;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/PayoutListFragment;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PayoutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/PayoutInfo;>;"
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    .line 159
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 160
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->mPayoutCount:I

    .line 161
    iput p3, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->mResource:I

    .line 162
    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;

    .prologue
    .line 153
    iget v0, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->mPayoutCount:I

    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0a001b

    .line 166
    if-nez p2, :cond_14

    .line 167
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->mResource:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 170
    :cond_14
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/PayoutInfo;

    .line 172
    .local v2, "payoutMethod":Lcom/airbnb/android/models/PayoutInfo;
    const v6, 0x7f080382

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 173
    .local v3, "payoutMethodTitle":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/PayoutInfo;->getTypeString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "payoutName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/airbnb/android/models/PayoutInfo;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 176
    iget-object v6, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    const v7, 0x7f0e0598

    invoke-virtual {v6, v7}, Lcom/airbnb/android/fragments/PayoutListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "defaultText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v6, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    invoke-virtual {v6}, Lcom/airbnb/android/fragments/PayoutListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v4, v0, v6}, Lcom/airbnb/android/utils/MiscUtils;->setTextAndColorSubstring(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    .end local v0    # "defaultText":Ljava/lang/String;
    :goto_5b
    const v6, 0x7f080383

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 184
    .local v5, "status":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/airbnb/android/models/PayoutInfo;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v6, 0x7f080384

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/PayoutInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v6, 0x7f080385

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 188
    .local v1, "editIcon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;->this$0:Lcom/airbnb/android/fragments/PayoutListFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutListFragment;->mAddPayoutDisabled:Z
    invoke-static {v6}, Lcom/airbnb/android/fragments/PayoutListFragment;->access$200(Lcom/airbnb/android/fragments/PayoutListFragment;)Z

    move-result v6

    if-nez v6, :cond_a6

    .line 189
    const v6, 0x7f020131

    const v7, 0x7f0a001a

    invoke-static {v6, v9, v9, v7, v9}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColors(IIIII)Lcom/airbnb/android/utils/ColorizedDrawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    new-instance v6, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter$1;-><init>(Lcom/airbnb/android/fragments/PayoutListFragment$PayoutsAdapter;Lcom/airbnb/android/models/PayoutInfo;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :goto_a1
    return-object p2

    .line 180
    .end local v1    # "editIcon":Landroid/widget/ImageView;
    .end local v5    # "status":Landroid/widget/TextView;
    :cond_a2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 200
    .restart local v1    # "editIcon":Landroid/widget/ImageView;
    .restart local v5    # "status":Landroid/widget/TextView;
    :cond_a6
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a1
.end method
