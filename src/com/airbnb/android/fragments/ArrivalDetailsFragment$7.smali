.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setTransportationButtonListener(Landroid/widget/Button;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$showDepartureTime:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Landroid/widget/Button;Z)V
    .registers 4

    .prologue
    .line 417
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->val$button:Landroid/widget/Button;

    iput-boolean p3, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->val$showDepartureTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 420
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearVisibilityState()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1300(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 421
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->val$button:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 422
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->val$button:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationFromButtonId(I)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$102(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Transportation;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 424
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "transportation_type"

    iget-object v4, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsSelectTransportationTypeClick(JLcom/airbnb/android/utils/Strap;)V

    .line 430
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->hasEstimatedArrivalTime()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 431
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->clearEstimatedArrivalTime()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 436
    :goto_58
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->val$showDepartureTime:Z

    if-eqz v0, :cond_dc

    .line 437
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mDepartureDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 442
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoInputView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_80
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Airline;

    move-result-object v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$600(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 446
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionFlightInfoView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionLocalTransportationView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_9e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 451
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocalTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getButtonId()I

    move-result v1

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 454
    :cond_bf
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalHour:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1600(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mEstimatedArrivalMinute:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1700(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 455
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setEstimatedArrivalTime()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 462
    :cond_d4
    :goto_d4
    return-void

    .line 433
    :cond_d5
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    goto/16 :goto_58

    .line 459
    :cond_dc
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionDepartureDateView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$7;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mSectionEnterEstimatedArrival:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d4
.end method
