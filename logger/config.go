package logger

import (
	"go.uber.org/zap/zapcore"

	"github.com/influxdata/influxdb/toml"
)

type AccessConfig struct {
	Enabled    bool          `toml:"enabled"`
	FileName   string        `toml:"file-name"`
	MaxSize    toml.Size     `toml:"max-size"`
	MaxBackups int           `toml:"max-backups"`
	Level      zapcore.Level `toml:"level"`
	Compress   bool          `toml:"compress"`
}

// Config represents the configuration for creating a zap.Logger.
type Config struct {
	FileName     string        `toml:"file-name"`
	Format       string        `toml:"format"`
	MaxSize      toml.Size     `toml:"max-size"`
	MaxBackups   int           `toml:"max-backups"`
	Level        zapcore.Level `toml:"level"`
	Compress     bool          `toml:"compress"`
	SuppressLogo bool          `toml:"suppress-logo"`
	Access       AccessConfig  `toml:"access"`
}

// NewConfig returns a new instance of Config with defaults.
func NewConfig() Config {
	config := Config{
		FileName:   "./influxdb.log",
		Format:     "json",
		MaxSize:    toml.Size(64 * 1024 * 1024),
		MaxBackups: 7,
		Level:      zapcore.InfoLevel,
		Compress:   true,
	}
	config.Access = AccessConfig{
		Enabled:    false,
		FileName:   "./access.log",
		MaxSize:    config.MaxSize,
		MaxBackups: config.MaxBackups,
		Level:      config.Level,
		Compress:   config.Compress,
	}
	return config
}
