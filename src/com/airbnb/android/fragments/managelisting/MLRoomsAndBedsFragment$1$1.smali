.class Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;
.super Ljava/lang/Object;
.source "MLRoomsAndBedsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

.field final synthetic val$adapter:Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;)V
    .registers 3

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->val$adapter:Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iget-object v1, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->val$adapter:Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    # setter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$002(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v2

    iget v2, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setPropertyType(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyTypeSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1$1;->this$1:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v1

    iget v1, v1, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 94
    return-void
.end method
