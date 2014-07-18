.class Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;
.super Ljava/lang/Object;
.source "AirDialogFragments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->access$000(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->mListener:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->access$000(Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;->clickSingleButton()V

    .line 146
    :goto_11
    return-void

    .line 144
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->dismiss()V

    goto :goto_11
.end method
