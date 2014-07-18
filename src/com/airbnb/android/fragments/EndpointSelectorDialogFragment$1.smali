.class Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;
.super Ljava/lang/Object;
.source "EndpointSelectorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

.field final synthetic val$endpoints:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 54
    iput-object p1, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->val$endpoints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;)Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 66
    :goto_8
    return-void

    .line 60
    :cond_9
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->val$endpoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_23

    .line 61
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;)Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->val$endpoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;->onEndpointSelected(Ljava/lang/String;)V

    goto :goto_8

    .line 64
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->mListener:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;->access$000(Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment;)Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;->onCustomEndpointSelected()V

    goto :goto_8
.end method
