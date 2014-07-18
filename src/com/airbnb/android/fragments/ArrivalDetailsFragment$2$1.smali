.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/AirlineCarriersRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 308
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AirlineCarriersRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/AirlineCarriersRequest;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    new-instance v1, Lcom/airbnb/android/adapters/AirlineCarriersAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;

    iget-object v2, v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x109000a

    iget-object v4, p1, Lcom/airbnb/android/requests/AirlineCarriersRequest;->airlineCarriers:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/adapters/AirlineCarriersAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Airline;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 302
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineNameAutoCompleteTextView:Lcom/airbnb/android/views/AirAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirAutoCompleteTextView;->showDropDown()V

    .line 304
    :cond_2e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 296
    check-cast p1, Lcom/airbnb/android/requests/AirlineCarriersRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$2$1;->onResponse(Lcom/airbnb/android/requests/AirlineCarriersRequest;)V

    return-void
.end method
