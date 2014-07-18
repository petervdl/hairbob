.class Lcom/airbnb/android/fragments/TOSDialogFragment$2;
.super Landroid/webkit/WebViewClient;
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
    .line 75
    iput-object p1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    # getter for: Lcom/airbnb/android/fragments/TOSDialogFragment;->AIRBNB_HOST:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/fragments/TOSDialogFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/TOSDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 88
    :cond_1b
    :goto_1b
    return v1

    .line 82
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/TOSDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/fragments/TOSDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/TOSDialogFragment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/TOSDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    :cond_41
    const/4 v1, 0x1

    goto :goto_1b
.end method
