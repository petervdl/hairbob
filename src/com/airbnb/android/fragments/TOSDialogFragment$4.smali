.class Lcom/airbnb/android/fragments/TOSDialogFragment$4;
.super Ljava/lang/Object;
.source "TOSDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 122
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$200(Lcom/airbnb/android/fragments/TOSDialogFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/TOSDialogFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$200(Lcom/airbnb/android/fragments/TOSDialogFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
