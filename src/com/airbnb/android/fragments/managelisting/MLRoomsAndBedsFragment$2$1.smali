.class Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;
.super Ljava/lang/Object;
.source "MLRoomsAndBedsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-static {p2}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$202(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v2

    iget v2, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setRoomType(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomTypeSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v1

    iget v1, v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->showOrHideRoomCounter()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V

    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    return-void
.end method
