.class Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;
.super Ljava/lang/Object;
.source "TrebuchetOverrideActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/TrebuchetOverrideActivity;

.field final synthetic val$debugSettings:Lcom/airbnb/android/utils/DebugSettings;

.field final synthetic val$keys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/TrebuchetOverrideActivity;Ljava/util/List;Lcom/airbnb/android/utils/DebugSettings;)V
    .registers 4

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->this$0:Lcom/airbnb/android/activities/TrebuchetOverrideActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->val$keys:Ljava/util/List;

    iput-object p3, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->val$debugSettings:Lcom/airbnb/android/utils/DebugSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->val$keys:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->this$0:Lcom/airbnb/android/activities/TrebuchetOverrideActivity;

    .line 64
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 65
    .local v3, "tokenEditText":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->val$debugSettings:Lcom/airbnb/android/utils/DebugSettings;

    iget-object v5, p0, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;->this$0:Lcom/airbnb/android/activities/TrebuchetOverrideActivity;

    # invokes: Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->getKeyWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->access$000(Lcom/airbnb/android/activities/TrebuchetOverrideActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/utils/DebugSettings;->getTrebuchetFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "flagValue":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 71
    :cond_2b
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1$1;-><init>(Lcom/airbnb/android/activities/TrebuchetOverrideActivity$1;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    return-void
.end method
