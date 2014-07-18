.class Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->onCustomEndpointSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/activities/DebugMenuActivity$5$1;

.field final synthetic val$tokenEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity$5$1;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 219
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$5$1;

    iput-object p2, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;->val$tokenEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 223
    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;->val$tokenEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 225
    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;->this$2:Lcom/airbnb/android/activities/DebugMenuActivity$5$1;

    iget-object v1, v1, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$5;

    iget-object v1, v1, Lcom/airbnb/android/activities/DebugMenuActivity$5;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # invokes: Lcom/airbnb/android/activities/DebugMenuActivity;->setEndpoint(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$500(Lcom/airbnb/android/activities/DebugMenuActivity;Ljava/lang/String;)V

    .line 227
    :cond_1d
    return-void
.end method
