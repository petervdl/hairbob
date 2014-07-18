.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setLocalTransportationButtonListener(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Landroid/widget/Button;)V
    .registers 3

    .prologue
    .line 467
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearLocalTransportationButtons()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1900(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 471
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->val$button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 472
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->val$button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromButtonId(I)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1502(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Transportation;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 474
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "transportation_type"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsSelectTransportationTypeClick(JLcom/airbnb/android/utils/Strap;)V

    .line 477
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$8;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 479
    return-void
.end method
