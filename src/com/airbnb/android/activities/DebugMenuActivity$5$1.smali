.class Lcom/airbnb/android/activities/DebugMenuActivity$5$1;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$OnEndpointSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/DebugMenuActivity$5;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity$5;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 205
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$5;

    iput-object p2, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomEndpointSelected()V
    .registers 5

    .prologue
    .line 214
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, "tokenEditText":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0156

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;

    invoke-direct {v3, p0, v0}, Lcom/airbnb/android/activities/DebugMenuActivity$5$1$1;-><init>(Lcom/airbnb/android/activities/DebugMenuActivity$5$1;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 230
    return-void
.end method

.method public onEndpointSelected(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$5$1;->this$1:Lcom/airbnb/android/activities/DebugMenuActivity$5;

    iget-object v0, v0, Lcom/airbnb/android/activities/DebugMenuActivity$5;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # invokes: Lcom/airbnb/android/activities/DebugMenuActivity;->setEndpoint(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$500(Lcom/airbnb/android/activities/DebugMenuActivity;Ljava/lang/String;)V

    .line 210
    return-void
.end method
