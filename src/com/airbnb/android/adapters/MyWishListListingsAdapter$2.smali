.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->getWishListView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

.field final synthetic val$rowView:Landroid/view/View;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 185
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->val$rowView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 190
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->this$0:Lcom/airbnb/android/adapters/MyWishListListingsAdapter;

    iget-object v2, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->val$viewHolder:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;

    iget-object v3, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$2;->val$rowView:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter;->unWishlist(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/MyWishListListingsAdapter$ViewHolder;Landroid/view/View;)V

    .line 191
    return-void
.end method
