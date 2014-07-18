.class public abstract Lnet/hockeyapp/android/CrashManagerListener;
.super Lnet/hockeyapp/android/StringListener;
.source "CrashManagerListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreDefaultHandler()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCrashesFound()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCrashesNotSent()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public onCrashesSent()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method
