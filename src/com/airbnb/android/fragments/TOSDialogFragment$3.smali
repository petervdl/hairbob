.class Lcom/airbnb/android/fragments/TOSDialogFragment$3;
.super Landroid/webkit/WebChromeClient;
.source "TOSDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TOSDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TOSDialogFragment;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 96
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1c

    .line 97
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$200(Lcom/airbnb/android/fragments/TOSDialogFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/TOSDialogFragment;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$300(Lcom/airbnb/android/fragments/TOSDialogFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    :cond_1c
    return-void
.end method
