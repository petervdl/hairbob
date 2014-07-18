.class final Lnet/hockeyapp/android/CrashManager$3;
.super Ljava/lang/Thread;
.source "CrashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->sendCrashes(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
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
    .line 355
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$3;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$3;->val$ignoreDefaultHandler:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 358
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$3;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/CrashManager;->submitStackTraces(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 359
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$3;->val$listener:Lnet/hockeyapp/android/CrashManagerListener;

    iget-boolean v2, p0, Lnet/hockeyapp/android/CrashManager$3;->val$ignoreDefaultHandler:Z

    # invokes: Lnet/hockeyapp/android/CrashManager;->registerHandler(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->access$000(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 360
    return-void
.end method
