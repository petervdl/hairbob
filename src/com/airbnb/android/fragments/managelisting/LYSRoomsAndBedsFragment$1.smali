.class Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;
.super Ljava/lang/Object;
.source "LYSRoomsAndBedsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mMaxGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v1}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v3}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

    invoke-virtual {v4}, Lcom/airbnb/android/views/GroupedCounterFloats;->getSelectedValueFloat()F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setRoomsAndBeds(IIIF)V

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "lys"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "rooms_and_beds"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "done_click"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mMaxGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValueString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValueString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValueString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

    invoke-virtual {v2}, Lcom/airbnb/android/views/GroupedCounterFloats;->getSelectedValueString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 96
    return-void
.end method
