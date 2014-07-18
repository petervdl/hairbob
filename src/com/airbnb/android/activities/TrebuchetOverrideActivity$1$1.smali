.class Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;
.super Ljava/lang/Object;
.source "TrebuchetOverrideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$tokenEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->this$1:Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;

    iput-object p2, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->val$tokenEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->val$tokenEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "newValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 80
    iget-object v1, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->this$1:Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;

    iget-object v1, v1, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->val$debugSettings:Lcom/airbnb/android/utils/DebugSettings;

    iget-object v2, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->this$1:Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;

    iget-object v2, v2, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->this$0:Lcom/airbnb/android/activities/TrebuchetOverrideActivity;

    iget-object v3, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;->val$key:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->getKeyWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->access$000(Lcom/airbnb/android/activities/TrebuchetOverrideActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/DebugSettings;->setTrebuchetFlag(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_25
    return-void
.end method
