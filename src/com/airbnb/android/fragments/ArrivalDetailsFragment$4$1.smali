.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 347
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_20

    .line 348
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 349
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const/4 v2, 0x0

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$602(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 364
    :cond_20
    :goto_20
    return-void

    .line 354
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v2, v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirlineFlightNumber:Ljava/lang/Integer;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$602(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 356
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mAirline:Lcom/airbnb/android/models/arrivalAssistant/Airline;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$400(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Airline;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 357
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const/4 v2, 0x1

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showAirlineLoader(Z)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$700(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Z)V

    .line 358
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->updateTravelSummary()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$800(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_53} :catch_54

    goto :goto_20

    .line 360
    :catch_54
    move-exception v0

    .line 361
    .local v0, "exception":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;->this$1:Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const v2, 0x7f0e000d

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->showErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$1000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;I)V

    goto :goto_20
.end method
