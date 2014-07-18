.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 273
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Airline;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 286
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const/4 v2, 0x0

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$402(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/models/arrivalAssistant/Airline;)Lcom/airbnb/android/models/arrivalAssistant/Airline;

    .line 289
    :cond_e
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "query":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 292
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/requests/AirlineCarriersRequest;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 293
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/requests/AirlineCarriersRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AirlineCarriersRequest;->cancelIfRunning()V

    .line 296
    :cond_35
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    new-instance v2, Lcom/airbnb/android/requests/AirlineCarriersRequest;

    new-instance v3, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;)V

    invoke-direct {v2, v0, v3}, Lcom/airbnb/android/requests/AirlineCarriersRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$502(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/airbnb/android/requests/AirlineCarriersRequest;)Lcom/airbnb/android/requests/AirlineCarriersRequest;

    .line 310
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineCarriersRequest:Lcom/airbnb/android/requests/AirlineCarriersRequest;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$500(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/requests/AirlineCarriersRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/requests/AirlineCarriersRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 311
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mFlightInfoContainerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->setDropDownWidth(I)V

    .line 313
    :cond_5e
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 280
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 276
    return-void
.end method
