.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->setupFlightInfoViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 317
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 320
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Airline;

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$402(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Airline;)Lcom/airbnb/android/models/arrivalAssistant/Airline;

    .line 321
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->dismissDropDown()V

    .line 322
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mFlightInfoContainerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 324
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$600(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 325
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showAirlineLoader(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$700(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Z)V

    .line 326
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$3;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 328
    :cond_34
    return-void
.end method
