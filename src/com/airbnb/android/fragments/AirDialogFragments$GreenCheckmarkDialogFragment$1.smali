.class Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;
.super Ljava/lang/Object;
.source "AirDialogFragments.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;)V
    .registers 2

    .prologue
    .line 500
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->dismiss()V

    .line 505
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->access$400(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 506
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;->access$400(Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$GreenCheckmarkDialogFragment$DialogCompleteListener;->onProgressComplete()V

    .line 508
    :cond_16
    return-void
.end method
