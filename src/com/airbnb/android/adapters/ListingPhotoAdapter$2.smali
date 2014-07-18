.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->createRow(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$convertView:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 243
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->val$convertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->val$parent:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    .line 247
    .local v0, "currListView":Landroid/widget/AbsListView;
    iget-object v4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->val$convertView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    .line 248
    .local v2, "viewHolder":Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    iget v3, v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->position:I

    .line 249
    .local v3, "viewHolderPosition":I
    iget-object v4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v5, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->val$convertView:Landroid/view/View;

    invoke-virtual {v4, v3, v5, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "selectedView":Landroid/view/View;
    iget-object v4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v4, v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 251
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 252
    return-void
.end method
