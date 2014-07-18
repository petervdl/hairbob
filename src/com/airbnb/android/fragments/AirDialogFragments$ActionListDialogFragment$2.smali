.class Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;
.super Ljava/lang/Object;
.source "AirDialogFragments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->dismiss()V

    .line 371
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->access$300(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 372
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;->access$300(Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 374
    :cond_16
    return-void
.end method
