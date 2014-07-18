.class final Lnet/hockeyapp/android/CrashManager$1;
.super Ljava/lang/Object;
.source "CrashManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->showDialog(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ignoreDefaultHandler:Z

.field final synthetic val$listener:Lnet/hockeyapp/android/CrashManagerListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 4

    .prologue
    .line 332
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$1;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$1;->val$ignoreDefaultHandler:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/hockeyapp/android/CrashManager;->deleteStackTraces(Landroid/content/Context;)V

    .line 335
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$1;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-boolean v2, p0, Lnet/hockeyapp/android/CrashManager$1;->val$ignoreDefaultHandler:Z

    # invokes: Lnet/hockeyapp/android/CrashManager;->registerHandler(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->access$000(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 336
    return-void
.end method
