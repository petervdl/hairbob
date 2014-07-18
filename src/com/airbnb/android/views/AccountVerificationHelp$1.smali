.class Lcom/airbnb/android/views/AccountVerificationHelp$1;
.super Ljava/lang/Object;
.source "AccountVerificationHelp.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/AccountVerificationHelp;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/AccountVerificationHelp;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/AccountVerificationHelp;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/views/AccountVerificationHelp$1;->this$0:Lcom/airbnb/android/views/AccountVerificationHelp;

    iput-object p2, p0, Lcom/airbnb/android/views/AccountVerificationHelp$1;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/android/views/AccountVerificationHelp$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 6
    .param p1, "linkIndex"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    iget-object v2, p0, Lcom/airbnb/android/views/AccountVerificationHelp$1;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/airbnb/android/views/AccountVerificationHelp$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/android/views/AccountVerificationHelp$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0e06e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
