.class Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;
.super Ljava/lang/Object;
.source "MLRoomsAndBedsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v1}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v3}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

    invoke-virtual {v4}, Lcom/airbnb/android/views/GroupedCounterFloats;->getSelectedValueFloat()F

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    invoke-static {v5}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    invoke-static {v6}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setRoomsBedsAndSpaceType(IIIFLcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)V

    .line 165
    return-void
.end method
