.class Lcom/airbnb/android/fragments/AppDisabledDialogFragment$1;
.super Ljava/lang/Object;
.source "AppDisabledDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AppDisabledDialogFragment;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/airbnb/android/fragments/AppDisabledDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/AppDisabledDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 45
    return-void
.end method
