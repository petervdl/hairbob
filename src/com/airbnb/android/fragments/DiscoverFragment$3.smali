.class Lcom/airbnb/android/fragments/DiscoverFragment$3;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/DiscoverFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/DiscoverFragment;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/airbnb/android/fragments/DiscoverFragment$3;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 157
    long-to-int p3, p4

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment$3;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItemViewType(I)I

    move-result v6

    .line 159
    .local v6, "type":I
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WISHLIST:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    if-ne v6, v0, :cond_27

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment$3;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/DiscoverFragment$3;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # getter for: Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;
    invoke-static {v1}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getItemAsCollection(I)Lcom/airbnb/android/models/Collection;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/DiscoverFragment;->onWishlistClicked(Lcom/airbnb/android/models/Collection;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$400(Lcom/airbnb/android/fragments/DiscoverFragment;Lcom/airbnb/android/models/Collection;)V

    .line 166
    :goto_26
    return-void

    .line 161
    :cond_27
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOCATIONS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    if-ne v6, v0, :cond_35

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment$3;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # invokes: Lcom/airbnb/android/fragments/DiscoverFragment;->onTravelLocationClicked(I)V
    invoke-static {v0, p3}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$500(Lcom/airbnb/android/fragments/DiscoverFragment;I)V

    goto :goto_26

    .line 164
    :cond_35
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment$3;->this$0:Lcom/airbnb/android/fragments/DiscoverFragment;

    # invokes: Lcom/airbnb/android/fragments/WishListableFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/DiscoverFragment;->access$601(Lcom/airbnb/android/fragments/DiscoverFragment;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_26
.end method
