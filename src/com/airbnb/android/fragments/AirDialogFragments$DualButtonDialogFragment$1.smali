.class Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;
.super Ljava/lang/Object;
.source "AirDialogFragments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->dismiss()V

    .line 238
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->access$100(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 239
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;->access$100(Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;->onClickNegative()V

    .line 241
    :cond_16
    return-void
.end method
