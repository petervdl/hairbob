.class Lcom/airbnb/android/fragments/CrashDialog$1;
.super Ljava/lang/Object;
.source "CrashDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CrashDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CrashDialog;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CrashDialog;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/fragments/CrashDialog$1;->this$0:Lcom/airbnb/android/fragments/CrashDialog;

    iput-object p2, p0, Lcom/airbnb/android/fragments/CrashDialog$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/fragments/CrashDialog$1;->this$0:Lcom/airbnb/android/fragments/CrashDialog;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CrashDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/CrashDialog$1;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
