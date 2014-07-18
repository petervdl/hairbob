.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;
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
    .line 331
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$900(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$900(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4$1;-><init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 338
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 334
    return-void
.end method
